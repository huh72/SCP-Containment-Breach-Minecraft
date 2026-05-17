#version 330

uniform sampler2D MainSampler;
uniform sampler2D DataSampler;
uniform sampler2D BlurSampler;
uniform sampler2D InSampler;
uniform sampler2D PrevSampler;

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


//
// uniform vec2 OutSize;

// uniform float GameTime;


float interval = 2.0; // обновлять снимок раз в 2 секунды


void main() {

    // if (traumaStrenght != 0.0) {
    //     vec4 prev_color = texture(MainSampler, texCoord);
    //     vec4 overlay;
	//     fragColor = prev_color;

    //     vec3 Phosphor = vec3(0.99, 0.99, 0.99);
    //     vec4 CurrTexel = texture(MainSampler, texCoord);
    //     vec4 PrevTexel = texture(PrevSampler, texCoord);
    //     fragColor = vec4(max(PrevTexel.rgb * Phosphor, CurrTexel.rgb), 1.0);
    // }


    // 1. Поворот (БЕЗ учета тряски, чтобы границы считались как раньше)
    float rotationAmount = readChannel(EXAMPLE_ROTATION_CHANNEL);
    float angle = radians(rotationAmount * 360.0);
    
    vec2 uv = (texCoord - 0.5) * OutSize;
    uv *= mat2(cos(angle), -sin(angle), sin(angle), cos(angle));
    uv = uv / OutSize + 0.5;


    // screen shake
    float shake = readChannel(SHAKE_CHANNEL);

    float randValue = fract(sin(dot(vec2(-shake, shake), vec2(12.9898, 78.233))) * 43758.5453);

    randValue = randValue / 120.0;
    vec2 shakenUV = uv - randValue;



    // 4. Проверяем границы по чистой uv (как было в вашем исходном коде)
    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0) {
        // Если за границей поворота — берем размытие (тоже со смещением тряски)
        fragColor = texture(BlurSampler, (shakenUV - 0.5) * sqrt(0.5) + 0.5);
    } else {
        // Если внутри — берем обычную текстуру со смещением тряски
        fragColor = texture(MainSampler, shakenUV);
    }



    // 5. Поверх применяем черно-белый эффект к полученному fragColor
    vec3 greyscale = vec3(dot(fragColor.rgb, vec3(0.2126, 0.7152, 0.0722)));
    float greyscaleAmount = readChannel(EXAMPLE_GREYSCALE_CHANNEL);
    fragColor.rgb = mix(fragColor.rgb, greyscale, greyscaleAmount);



    // 6. Поверх применяем зеленый фильтр
    vec3 greenscale = vec3(0.0, dot(fragColor.rgb, vec3(0.3, 1.0, 0.3)), 0.0);
    float greenscaleAmount = readChannel(COLOR_CHANNEL);
    fragColor.rgb = mix(fragColor.rgb, greenscale, greenscaleAmount);


    // 7. trauma blur effect
    float traumaStrenght = readChannel(TRAUMA_BLUR_CHANNEL);
    // fragColor.rgb = vec3(0.0, traumaStrenght, 0.0); ##DEBUG##

    // ## DEBUG ##
 
    // float Time = GameTime;

    // vec3 Phosphor = vec3(0.99, 0.99, 0.99);




    // vec4 curr = texture2D(Curr, texCoord);
    // vec4 old  = texture2D(OldSnapshot, texCoord);

    // vec4 CurrTexel = texture(MainSampler, texCoord);
    // vec4 PrevTexel = texture(PrevSampler, texCoord);

    // fragColor.rgb = vec3(mix(CurrTexel, PrevTexel, 0.5));


    // float t = fract(Time * 1000.0);
    // // fragColor = vec4(t, t, t, 0.5);
    // if ((t > 0.49 && t < 0.51) || (t > 0.29 && t < 0.31) || (t > 0.69 && t < 0.71)) {
    //     fragColor.rgb = vec3(mix(CurrTexel.rgb, vec3(0.5, 0.5, 0.5), 0.5));
    // }

    // float temp = fract(Time / interval);

    // if (temp > 0 && temp < 0.2) {
    //     fragColor.rgb = vec3(mix(CurrTexel.rgb, vec3(1.0, 1.0, 1.0), 0.5));
    // } else {
    //     fragColor.rgb = vec3(mix(CurrTexel.rgb, vec3(0.5, 0.5, 0.5), 0.5));
    // }

    // float t = fract(Time / interval);
    // // В начале каждого интервала (например, первые 0.05 с) запоминаем новый кадр,
    // // иначе оставляем старый снимок.
    // float update = step(t, 0.05);
    // fragColor = mix(PrevTexel, CurrTexel, update);




    // vec4 CurrTexel = texture(InSampler, texCoord);
    // vec4 PrevTexel = texture(PrevSampler, texCoord);
    // vec4 BlurTexel = texture(BlurSampler, texCoord);

    // if (floor(Time) / 2 == 0) {
    //     fragColor.rgb = vec3(mix(CurrTexel, BlurTexel, 0.75));
    // } else {
    //     fragColor.rgb = vec3(mix(CurrTexel.rgb, vec3(1.0, 1.0, 1.0), 0.5));
    // }
    
    

    // fragColor.rgb = vec4(mix(PrevTexel.rgb * Phosphor.rgb, CurrTexel.rgb), 0.5);

    // float Time = (GameTime * 1201) - floor(GameTime * 1201);


    // vec3 tex_col = curr_texel.rgb;
    // vec3 prev_col = prev_texel.rgb;
    // vec3 mergeColor = 1.0f - (1.0f - prev_col * 0.5f) * (1.0f - tex_col * 0.5f);
    // vec3 stripColor = mergeColor;

	// fragColor = curr_texel;

         
    // if (cos(texCoord.y * (512 + distance(vec2(texCoord.x, 0.5f), vec2(0.5f, 0.5f)) * 100) - Time * 30) < -0.7f) {
    //     stripColor = mergeColor * 3.95f;
    // }
    // fragColor = vec4(stripColor, curr_texel.a);



    // vec4 curr_texel = texture(InSampler, texCoord);
    // vec4 prev_texel = texture(PrevSampler, texCoord);

    // vec3 tex_col = curr_texel.rgb;
    // vec3 prev_col = prev_texel.rgb;
    // vec3 mergeColor = 1.0f - (1.0f - prev_col * 0.5f) * (1.0f - tex_col * 0.5f);
    // vec3 stripColor = mergeColor;

	// fragColor = curr_texel;

    // // Channel #1
    // vec4 control_color = texelFetch(ControlSampler, ivec2(0, 1), 0);
    // if((control_color.g * 255.) == 253) { // Channel #1
    //     switch(int(control_color.b * 255.)) {
    //         case 1:            
    //             if (cos(texCoord.y * (512 + distance(vec2(texCoord.x, 0.5f), vec2(0.5f, 0.5f)) * 100) - Time * 30) < -0.7f) {
    //                 stripColor = mergeColor * 0.95f;
    //             }
    //             fragColor = vec4(stripColor, curr_texel.a);
    //     }
    // }
    // fragColor.rgb = vec4(curr_texel, prev_texel);

    // fragColor = mix(prev_texel, prev_texel, 0.5);  // предыдущий кадр затухает
    // fragColor.a = 0.5;


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