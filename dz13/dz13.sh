#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Использование: $0 <текст_для_подсчета>"
fi
word_count=$(echo "$1" | wc -w)

echo "Количество слов в тексте: $word_count"
