all: s21_cat s21_cat_test

s21_cat: s21_cat.c
	gcc -Wall -Werror -Wextra -g s21_cat.c -o s21_cat

s21_cat_test: s21_cat
	@./tests/test.sh

clang-format:
	mv ../../materials/linters/.clang-format .clang-format
	clang-format -i *.c
	clang-format -n *.c
	mv .clang-format ../../materials/linters/.clang-format

clean:
	rm -rf s21_cat
