all: s21_grep s21_grep_test

s21_grep:
	gcc -Wall -Werror -Wextra -g s21_grep.c -o s21_grep

s21_grep_test: s21_grep
	@./tests/test.sh

clang-format:
	mv ../../materials/linters/.clang-format .clang-format
	clang-format -i *.c
	clang-format -n *.c
	mv .clang-format ../../materials/linters/.clang-format

clean:
	rm -rf s21_grep
