#version 330

uniform sampler2D MainSampler;
uniform sampler2D DataSampler;
uniform sampler2D BlurSampler;
// uniform sampler2D InSampler;
// uniform sampler2D PrevSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

#moj_import <minecraft:globals.glsl>

#moj_import <shader_selector:marker_settings.glsl>
#moj_import <shader_selector:utils.glsl>
#moj_import <shader_selector:data_reader.glsl>

in vec2 texCoord;
out vec4 fragColor;


// Параметры шума
const float noiseIntensity = 3.5;   // больше деталей
const float noiseDefinition = 0.7;
const float speed = 1800;            // скорость переливов

// Шумовые функции
float random(vec2 co) {
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

float noise(in vec2 p) {
    p *= noiseIntensity;
    vec2 i = floor(p);
    vec2 f = fract(p);
    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(mix(random(i + vec2(0.0, 0.0)),
                   random(i + vec2(1.0, 0.0)), u.x),
               mix(random(i + vec2(0.0, 1.0)),
                   random(i + vec2(1.0, 1.0)), u.x), u.y);
}

float fbm(in vec2 uv) {
    uv *= 5.0;
    mat2 m = mat2(1.6, 1.2, -1.2, 1.6);
    float f  = 0.5000 * noise(uv); uv = m * uv;
    f += 0.2500 * noise(uv); uv = m * uv;
    f += 0.1250 * noise(uv); uv = m * uv;
    f += 0.0625 * noise(uv); uv = m * uv;
    return f;
}

// Анимированный фон с переливами
vec3 animatedBackground(vec2 uv) {
    float time0 = readChannel(TEST_CHANNEL);
    float time = time0 * speed;

    // Несколько слоёв ряби с разными скоростями
    float ripple1 = fbm(vec2(uv.x * 0.9 + time * 0.2, uv.y));
    float ripple2 = fbm(vec2(uv.y * 0.8 - time * 0.15, uv.x * 0.7));
    float ripple = (ripple1 + ripple2) * 0.4;

    // Плавно меняющаяся цветовая палитра (синие, фиолетовые, бирюзовые тона)
    // vec3 colorA = vec3(0.05, 0.15, 0.5);  // глубокий синий
    // vec3 colorB = vec3(0.5, 0.1, 0.6);    // фиолетовый
    // vec3 colorC = vec3(0.0, 0.4, 0.6);    // бирюзовый
    // float t1 = sin(time * 0.4) * 0.5 + 0.5;
    // float t2 = cos(time * 0.7) * 0.5 + 0.5;
    // vec3 baseColor = mix(mix(colorA, colorB, t1), colorC, t2);
     vec3 baseColor = vec3(0.5, 0.5, 0.5);

    // Усиливаем яркость рябью без тёмных провалов
    float brightness = 0.7 + 0.6 * ripple;
    brightness = clamp(brightness, 0.0, 1.0);   // гарантирует отсутствие чёрных пятен

    return baseColor * brightness;
}



void main() {

    // screen rotation
    float rotationAmount = readChannel(ROTATION_CHANNEL);
    float angle = radians(rotationAmount * 360.0);
    vec2 uv = (texCoord - 0.5) * OutSize;
    uv *= mat2(cos(angle), -sin(angle), sin(angle), cos(angle));
    uv = uv / OutSize + 0.5;

    // screen shake
    float shake = readChannel(SHAKE_CHANNEL);

    float randX = fract(sin(dot(vec2(shake, 0.0), vec2(12.9898, 78.233))) * 43758.5453);
    float randY = fract(sin(dot(vec2(0.0, shake), vec2(12.9898, 78.233))) * 43758.5453);

    float shakeStrength = 1.0 / 65.0;
    vec2 shakeOffset = (vec2(randX, randY) * shakeStrength);

    vec2 shakenUV = uv + shakeOffset;



    // Zoom effect
    float zoomChannelVal = readChannel(ZOOM_CHANNEL);
    float speed = 200.0;
    float zoomFactor = 1.0 + sin(zoomChannelVal * speed);
    zoomFactor = (clamp(zoomFactor, 1.0, 2.0));
    zoomFactor = pow(zoomFactor, 0.015);

    vec2 zoomedUV = (shakenUV - 0.5) / (zoomFactor) + 0.5;
    zoomedUV = clamp(zoomedUV, 0.0, 1.0);

    // screen border
    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0) {
        fragColor = texture(BlurSampler, (zoomedUV - 0.5) * sqrt(0.5) + 0.5);
    } else {
        fragColor = texture(MainSampler, zoomedUV);
    }

    // blur effect
    float blurEffectStrenght = readChannel(BLUR_CHANNEL);
    vec4 BlurTexel = texture(BlurSampler, zoomedUV);
    fragColor.rgb = mix(fragColor.rgb, BlurTexel.rgb, blurEffectStrenght);



    // trail
    float Time = GameTime;
    float trailStrength = readChannel(TRAIL_CHANNEL);
    if (trailStrength > 0.0) {
        int trailSamples = 16;
        vec2 trailDirection = vec2(1.0, -1.0);
        float trailSpacing = 0.005 * 0.8;
        float opacityFalloff = 0.5;
        vec3 trailColor = vec3(0.0);
        float totalWeight = 0.0;
        for (int i = 1; i <= trailSamples; i++) {
            float weight = pow(1.0 - float(i) / (float(trailSamples) + 1.0), opacityFalloff * 10.0);
            vec2 offset = trailDirection * trailSpacing * float(i) * sin(trailStrength * 1000);
            trailColor += texture(MainSampler, zoomedUV + offset).rgb * weight;
            totalWeight += weight;
        }
        trailColor /= totalWeight;
        fragColor.rgb = mix(fragColor.rgb, trailColor, 0.5);
    }

    // gray screen
    vec3 greyscale = vec3(dot(fragColor.rgb, vec3(0.2126, 0.7152, 0.0722)));
    float greyscaleAmount = readChannel(GRAY_CHANNEL);
    fragColor.rgb = mix(fragColor.rgb, greyscale, greyscaleAmount);



    // green screen
    vec3 greenscale = vec3(0.0, dot(fragColor.rgb, vec3(0.3, 1.0, 0.3)), 0.0);
    float greenscaleAmount = readChannel(GREEN_CHANNEL);
    fragColor.rgb = mix(fragColor.rgb, greenscale, greenscaleAmount);




    // blue screen
    vec3 bluescale = vec3(0.0, 0.0, dot(fragColor.rgb, vec3(0.1, 0.85, 0.1)));
    float bluescaleAmount = readChannel(BLUE_CHANNEL);
    fragColor.rgb = mix(fragColor.rgb, bluescale, bluescaleAmount);



    // yellow screen
    vec3 yellowscale = vec3( dot(fragColor.rgb, vec3(0.1, 0.85, 0.1)), dot(fragColor.rgb, vec3(0.1, 0.85, 0.1)), 0.0);
    float yellowscaleAmount = readChannel(YELLOW_CHANNEL);
    fragColor.rgb = mix(fragColor.rgb, yellowscale, yellowscaleAmount);



    // goggles
    float gogglesOverlayStrngth = readChannel(GOGGLES_CHANNEL);

    // grid
    float gridSpacing = 5.0;
    float lineWidth   = 2.0;
    float lineSoftness = 0.1;
    float gridOpacity = 0.35;
    vec3 gridColor    = vec3(0.0);

    vec2 gridCoord = texCoord * OutSize / gridSpacing;
    vec2 distFromLine = abs(fract(gridCoord - 0.5) - 0.5) * gridSpacing;

    // mask
    float lineX = 1.0 - smoothstep(lineWidth * 0.5, lineWidth * 0.5 + lineSoftness, distFromLine.x);
    float lineY = 1.0 - smoothstep(lineWidth * 0.5, lineWidth * 0.5 + lineSoftness, distFromLine.y);
    float gridAlpha = max(lineX, lineY) * gridOpacity;

    fragColor.rgb = mix(fragColor.rgb, gridColor, gridAlpha * gogglesOverlayStrngth);

    // black vignette
    float dist = length(texCoord - 0.5) * 1.25; // radius
    float vignette = 1.0 - smoothstep(0.45, 0.9, dist);
    float vignetteStrength = mix(1.0, vignette, gogglesOverlayStrngth);
    fragColor.rgb = fragColor.rgb * vignetteStrength;


    // brightness and saturation
    float saturation = readChannel(SATURATION_CHANNEL) * 5.0 + 1.0;
    float brightness = readChannel(BRIGHTNESS_CHANNEL) + 0.5;

    fragColor.rgb = fragColor.rgb * brightness;

    float gray = dot(fragColor.rgb, vec3(0.2126, 0.7152, 0.0722));
    fragColor.rgb = mix(vec3(gray), fragColor.rgb, saturation);

    //flicker
    // float flicker = readChannel(FLICKER_CHANNEL) + 1;
    // float flickerRand = fract((dot(vec2(flicker, 1.0), vec2(12.9898, 78.233))) * 43758.5453);
    // fragColor.rgb = fragColor.rgb * flickerRand;

    // gasmask
    float gasmaskStrength = readChannel(GASMASK_CHANNEL);

    if (gasmaskStrength > 0) {
        // eye holes positioning
        vec2 leftEyeCenter  = vec2(0.4, 0.5);
        vec2 rightEyeCenter = vec2(0.6, 0.5);
        float eyeRadius     = 0.275;

        vec2 aspect = vec2(1.0, OutSize.x / (OutSize.y / 0.35));

        float dLeft  = length((texCoord - leftEyeCenter) * aspect);
        float dRight = length((texCoord - rightEyeCenter) * aspect);

        float edgeSoftness = 0.175;
        float leftEye  = 1.0 - smoothstep(eyeRadius - edgeSoftness, eyeRadius + edgeSoftness, dLeft);
        float rightEye = 1.0 - smoothstep(eyeRadius - edgeSoftness, eyeRadius + edgeSoftness, dRight);

        float insideEye = max(leftEye, rightEye);

        float mask = (1.0 - insideEye) * gasmaskStrength;

        fragColor.rgb = mix(fragColor.rgb, vec3(0.0), mask);
    }


    // ================== ЭФФЕКТ ГОРЕНИЯ ==================
    float fireAmount = readChannel(BURN_CHANNEL);   // значение от 0 до 1
    if (fireAmount > 0.0) {
        // 1. Тепловое искажение (heat haze)
        float time = GameTime * 0.5;
        float distortionStrength = fireAmount * 0.02; // сила искажения
        vec2 distortedUV = zoomedUV + vec2(
            sin(zoomedUV.y * 20.0 + time) * distortionStrength,
            cos(zoomedUV.x * 20.0 + time) * distortionStrength
        );
        distortedUV = clamp(distortedUV, 0.0, 1.0);

        vec3 fireScene = texture(MainSampler, distortedUV).rgb;

        // 2. Огненный цвет
        vec3 fireColor = mix(vec3(1.0, 0.3, 0.0), vec3(1.0, 0.6, 0.1), fireAmount);
        float pulsation = 0.8 + 0.2 * sin(GameTime * 10.0 + texCoord.x * 5.0); // мерцание по экрану
        float fireIntensity = fireAmount * pulsation;
        vec3 fireOverlay = mix(fireScene, fireColor, fireIntensity * 1.5);

        // Применяем поверх текущего результата (сохраняя другие эффекты)
        fragColor.rgb = mix(fragColor.rgb, fireOverlay, fireAmount);

        // 3. Виньетка пламени по краям
        vec2 edgeDist = abs(zoomedUV - 0.5) * 2.0;           // 0 в центре, 1 на границе
        float edgeFade = max(edgeDist.x, edgeDist.y);
        float fireVignette = smoothstep(0.5, 1.0, edgeFade) * fireAmount * 0.6;
        fragColor.rgb = mix(fragColor.rgb, fireColor * 1.5, fireVignette);

        // 4. Мерцание яркости
        float flicker = 1.0 + fireAmount * 0.25 * sin(GameTime * 20.0);
        fragColor.rgb *= flicker;
    }
    // =====================================================

    float test = readChannel(TEST_CHANNEL);

    // UV с коррекцией аспекта (заполняет весь экран)
    uv = texCoord * 2.0 - 1.0;
    uv.x *= OutSize.x / OutSize.y;

    // Игровая сцена
    vec3 sceneColor = texture(MainSampler, texCoord).rgb;

    // Переливающаяся рябь
    vec3 rippleColor = animatedBackground(uv);

    // Степень прозрачности (регулируйте на свой вкус)
    float effectAlpha = 0.85;

    // Смешивание
    vec3 finalColor = mix(sceneColor, rippleColor, effectAlpha);

    fragColor = vec4(finalColor, 1.0);

    



// #define DEBUG
#ifdef DEBUG
    // Show data sampler on screen
    if (texCoord.x < .25 && texCoord.y < .25) {
        uv = texCoord * 4.0;
        vec4 col = texture(DataSampler, uv);
        if (uv.x > 1./5.)
            col = vec4(vec3(fract(decodeColor(col))), 1.0);
        fragColor = col;
    }
#endif
}