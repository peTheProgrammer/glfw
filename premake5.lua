function include_glfw(path)
	includedirs (path .. "/include")
	links "glfw"
end

project "glfw"
	location (path.join(_WORKING_DIR, "_out/build/%{prj.name}"))
	kind "StaticLib"
	language "C"

	files {
		"src/window.c",
		"src/vulkan.c",
		"src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c",
		"src/platform.c",
		"src/null*"
	}

	filter "system:linux"
		defines { "_GLFW_X11" }
		files {
			"src/egl_context.c",
			"src/glx_context.c",
			"src/linux_joystick.c",
			"src/osmesa_context.c",
			"src/posix_thread.c",
			"src/posix_time.c",
			"src/x11_init.c",
			"src/x11_monitor.c",
			"src/x11_window.c",
			"src/x11_window.c",
			"src/xkb_unicode.c"
		}
		links {
			"pthread",
			"X11"
		}

	filter "system:windows"
		defines { "_GLFW_WIN32" }
		files {
			"src/win32*",
			"src/wgl_context.c",
			"src/egl_context.c",
			"src/osmesa_context.c"
		}