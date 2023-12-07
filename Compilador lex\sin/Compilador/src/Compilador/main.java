package Compilador;

import java.io.FileNotFoundException;
//import edu.princeton.cs.algs4.Stdin;
//import edu.princeton.cs.algs4.Stdout;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

import java_cup.runtime.Symbol;
import Compilador.Lexico.Lexer;
import Compilador.Sintatico.parser;

public class main {

	public static void main(String[] args) {
        try {
        	
        	Symbol s;
            // Caminho para o arquivo de entrada
            String caminhoArquivo = "C:\\teste\\testeana.txt";
            
            // Criar um Reader para ler o conteúdo do arquivo
            Reader reader = new FileReader(caminhoArquivo);

            // Iniciar o lexer e o parser com o reader do arquivo
            Lexer lexer = new Lexer(reader);
            
            
            
            parser parser = new parser(lexer);
            parser.parse(); // Inicia a análise sintática
            System.out.println("Análise concluída com sucesso.");
            
//            do{
//        	   s=lexer.next_token();
//        	   System.out.println(s +" "+sym.terminalNames[s.sym]);
//           }while(s.sym !=0 );
            
            
            
        } catch (FileNotFoundException e) {
            System.err.println("Arquivo não encontrado: " + e.getMessage());
        } catch (IOException e) {
            System.err.println("Erro ao ler o arquivo: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
