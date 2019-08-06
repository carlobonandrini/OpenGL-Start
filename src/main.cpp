#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <string>

static unsigned int CompileShader(unsigned int type,
                                  const std::string &source) {
  // Compiling shader of the appropriate type
  unsigned int id = glCreateShader(type);
  const char *src = source.c_str();
  glShaderSource(id, 1, &src, nullptr);
  glCompileShader(id);

  // Checking and logging any error messages from the compilation
  // If any errors occour the shader gets deleted and the function return 0
  int result;
  glGetShaderiv(id, GL_COMPILE_STATUS, &result);
  if (result != GL_TRUE) {
    int length;
    glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length);
    char log[length];
    glGetShaderInfoLog(id, length, nullptr, log);
    std::cout << (type == GL_VERTEX_SHADER ? "VERTEX" : "FRAGMENT")
              << " SHADER ERROR: " << log << std::endl;
    glDeleteShader(id);
    return 0;
  }

  return id;
}

static unsigned int CreateShader(const std::string &vertexShader,
                                 const std::string &fragmentShader) {
  unsigned int program = glCreateProgram();
  unsigned int vs = CompileShader(GL_VERTEX_SHADER, vertexShader);
  unsigned int fs = CompileShader(GL_FRAGMENT_SHADER, fragmentShader);

  glAttachShader(program, vs);
  glAttachShader(program, fs);
  glLinkProgram(program);
  glValidateProgram(program);

  glDeleteShader(vs);
  glDeleteShader(fs);

  return program;
}

int main() {
  GLFWwindow *window;

  /* Initialize The library */
  if (!glfwInit())
    return -1;

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

  /* Create a windowed mode window and its OpenGL context */
  window = glfwCreateWindow(640, 480, "OpenGL Test", NULL, NULL);

  if (!window) {
    glfwTerminate();
    return -1;
  }

  /* Make the window's context current */
  glfwMakeContextCurrent(window);

  // NEEDS to be put after the creation of the opengl context
  if (glewInit() != GLEW_OK)
    std::cout << "GlewInit error" << std::endl;

  std::cout << glGetString(GL_VERSION) << std::endl;

  float positions[] = {-0.5f, -0.5f, 0.0f, 0.5f, 0.5f, -0.5f};

  unsigned int buffer;
  glGenBuffers(1, &buffer);
  glBindBuffer(GL_ARRAY_BUFFER, buffer);
  glBufferData(GL_ARRAY_BUFFER, 6 * sizeof(float), positions, GL_STATIC_DRAW);

  unsigned int vertexArray;
  glGenVertexArrays(1, &vertexArray);
  glBindVertexArray(vertexArray);

  glEnableVertexAttribArray(0);
  glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 2 * sizeof(float), 0);

  std::string vertexShader = "#version 330 core\n"
                             "layout(location = 0) in vec4 position;\n"
                             "void main(){\n"
                             "gl_Position = position;}\n";

  std::string fragmentShader = "#version 330 core\n"
                               "layout(location = 0) out vec4 color;\n"
                               "void main(){\n"
                               "color=vec4(1.0, 0.0, 0.0, 1.0);}\n";

  unsigned int shader = CreateShader(vertexShader, fragmentShader);
  glUseProgram(shader);

  /* Loop until the user closes the window */
  while (!glfwWindowShouldClose(window)) {
    /* Render here */
    glClear(GL_COLOR_BUFFER_BIT);

    glDrawArrays(GL_TRIANGLES, 0, 3);

    /* Swap front and back buffers */
    glfwSwapBuffers(window);

    /* Poll for and process events */
    glfwPollEvents();
  }

  glDeleteProgram(shader);

  glfwTerminate();
  return 0;
}
