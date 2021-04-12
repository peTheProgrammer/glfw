project "glfw"
	location "./"
	kind "StaticLib"
	language "C"

	links
	{
		"pthread",
		"X11"
	}

	files {
		"src/window.c",
		"src/vulkan.c",
		"src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c"
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
	filter "system:windows"
		defines { "_GLFW_WIN32" }