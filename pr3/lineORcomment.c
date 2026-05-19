#include <stdio.h>
#include <string.h>

int main() {
    char line[256];
    int i = 0;
    
    printf("Enter a line:\n");
    fgets(line, sizeof(line), stdin);
    
    // Remove newline character if present
    if (line[strlen(line) - 1] == '\n') {
        line[strlen(line) - 1] = '\0';
    }
    
    // Check for single-line comment (//)
    for (i = 0; i < strlen(line) - 1; i++) {
        if (line[i] == '/' && line[i + 1] == '/') {
            printf("It is a single line comment\n");
            return 0;
        }
    }
    
    // Check for multi-line comment (/* */)
    for (i = 0; i < strlen(line) - 1; i++) {
        if (line[i] == '/' && line[i + 1] == '*') {
            // Look for closing */
            for (int j = i + 2; j < strlen(line) - 1; j++) {
                if (line[j] == '*' && line[j + 1] == '/') {
                    printf("It is a multi line comment\n");
                    return 0;
                }
            }
        }
    }
    
    // If no comment found
    printf("It is not a comment\n");
    
    return 0;
}
