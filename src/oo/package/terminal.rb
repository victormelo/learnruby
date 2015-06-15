#encoding: utf-8

class Terminal
    def prompt()
        puts "numero 1: "
        n1 = gets.chomp!
        puts "numero 2: "
        n2 = gets.chomp!

        print("\n[+] soma\n[-] sub\n[*] mult\n[/] div\nop: ")
        op = gets.chomp!
        raise 'Operador Invalido' unless op == '+' ||  op == '*' || op == '/' || op == '-'

        puts "\n" + "*"*20
        print "Operação: " + n1 + ' ' + op + ' ' + n2 + "\n"
        return {'n1' => n1, 'n2' => n2, 'op' => op}
    end
end

