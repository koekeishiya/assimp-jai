AT_COMPILE_TIME :: true;

#if AT_COMPILE_TIME {
    #run,stallable {
        set_build_options_dc(.{do_output=false});
        options := get_build_options();
        args := options.compile_time_command_line;
        if !generate_bindings(args, options.minimum_os_version) {
            compiler_set_workspace_status(.FAILED);
        }
    }
} else {
    #import "System";

    main :: () {
        set_working_directory(path_strip_filename(get_path_of_running_executable()));
        if !generate_bindings(get_command_line_arguments(), #run get_build_options().minimum_os_version) {
            exit(1);
        }
    }
}

generate_bindings :: (args: [] string, minimum_os_version: type_of(Build_Options.minimum_os_version)) -> bool {
    target_x64     := array_find(args, "-x64");
    target_arm     := array_find(args, "-arm64");

    os_target  := OS;
    cpu_target := CPU;
    if target_x64     cpu_target = .X64;
    if target_arm     cpu_target = .ARM64;

    lib_directory: string;
    lib_base_name: string;
    if os_target == {
        case .WINDOWS;
            lib_directory = "windows";
            lib_base_name = "assimp-vc143-mt";
        case .MACOS;
            lib_directory = "macos";
            lib_base_name = "assimp";
        case;
            assert(false);
    }

    options: Generate_Bindings_Options;
    options.os = os_target;
    options.cpu = cpu_target;
    {
        using options;

        array_add(*libpaths, lib_directory);
        array_add(*libnames, lib_base_name);

        assimp_files :: string.[
            "include/assimp/defs.h",
            "include/assimp/types.h",
            "include/assimp/vector2.h",
            "include/assimp/vector3.h",
            "include/assimp/color4.h",
            "include/assimp/matrix3x3.h",
            "include/assimp/matrix4x4.h",
            "include/assimp/quaternion.h",
            "include/assimp/texture.h",
            "include/assimp/mesh.h",
            "include/assimp/aabb.h",
            "include/assimp/light.h",
            "include/assimp/camera.h",
            "include/assimp/material.h",
            "include/assimp/anim.h",
            "include/assimp/metadata.h",
            "include/assimp/importerdesc.h",
            "include/assimp/cimport.h",
            "include/assimp/scene.h",
            "include/assimp/postprocess.h"
        ];

        array_add(*include_paths, "include");
        array_add(*source_files, ..assimp_files);

        #if OS == .MACOS {
            // For some reason macOS needs this, but Windows does not..
            array_add(*path_fragments_to_treat_as_non_system_paths, ..assimp_files);
        }

        generate_library_declarations = false;
        footer = tprint(FOOTER_TEMPLATE, lib_base_name);

        auto_detect_enum_prefixes = true;
        log_stripped_declarations = false;
        generate_compile_time_struct_checks = false;
    }

    #if OS == .WINDOWS {
        output_filename := "windows.jai";
    } else #if OS == .MACOS {
        output_filename := "macos.jai";
    } else {
        #assert false;
    }

    return generate_bindings(options, output_filename);
}

FOOTER_TEMPLATE :: #string END

#if OS == .WINDOWS {
    assimp_vc143_mt :: #library "windows/%1";
} else #if OS == .MACOS {
    assimp :: #library "macos/%1";
} else {
    #assert false;
}

END

#import "Basic";
#import "Bindings_Generator";
#import "BuildCpp";
#import "Compiler";
#import "File";
