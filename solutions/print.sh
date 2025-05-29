#!/usr/bin/env bash

print_greeting() {
    echo "Hallo von Bash!"
}

print_vars() {
    local name="Bash"
    local version=5.1
    printf "Verwende %s Version %.1f\n" "$name" "$version"
}

print_escape() {
    printf "Dies ist ein Zeilenumbruch:\nDies ist ein Tabulator:\tFertig!\n"
    printf "\e[32mGrüner Text\e[0m und normaler Text\n"
}

print_greeting
print_vars
print_escape
