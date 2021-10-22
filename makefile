
VULKAN_SDK_PATH = C:/VulkanSDK/1.2.189.2
GLFW3_PATH = C:/Users/pl889999/Dev/libs/glfw-3.3.4
GLM_PATH = C:/Users/pl889999/Dev/libs/glm
CFLAGS = -std=c++17 -I. -I$(VULKAN_SDK_PATH)/include -I$(GLFW3_PATH)/include -I$(GLM_PATH)
LDFLAGS = -L$(VULKAN_SDK_PATH)/Lib -L$(GLFW3_PATH)/lib-mingw-w64 -lvulkan-1 -lglfw3 -lgdi32

a.exe: main.cpp
	g++ $(CFLAGS) -o a.exe main.cpp $(LDFLAGS)

test: a.exe
	./a.exe

clean:
	rm -f a.exe