/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Gerente;
import model.Pessoa;
import model.Endereco;
import model.Docs;

/**
 *
 * @author Henrique
 */
public class GerenteDao {
    
    public static boolean insert(Gerente gerente) {
        boolean resultado = false;
        
        if (true) {
            resultado = true;
        }
        return resultado;
    }
    
    public static boolean update(Gerente gerente) {
        boolean resultado = false;
        
        if (true) {
            resultado = true;
        }
        return resultado;
    }
    
    public static boolean delete(Gerente gerente) {
        boolean resultado = false;
        
        if (true) {
            resultado = true;
        }
        return resultado;
    }
    
    public static Gerente find(String gerente) {
        Gerente gerente1 = new Gerente();
        
        Pessoa pessoa = new Pessoa();
        pessoa.setNome("Antônio");
        pessoa.setSobrenome("Henrique");
        pessoa.setGenero("Homem Cis");
        pessoa.setDataNascimento("26-10-1998");
        pessoa.setDdiContato("+55");
        pessoa.setTelefoneDdd("21 9 69179669");
        
        Endereco endereco = new Endereco();
        endereco.setCodigoPostal("24716591");
        endereco.setTipoLogradouro("Rua");
        endereco.setLogradouro("Soares dos Reis");
        endereco.setSubdivisao1("América do Sul");
        endereco.setSubdivisao2("Brasil");
        endereco.setSubdivisao3("Sudeste");
        endereco.setSubdivisao4("Rio de Janeiro");
        endereco.setSubdivisao5("Região Metropolitana");
        endereco.setSubdivisao6("São Gonçalo");
        endereco.setSubdivisao7("Jardim Catarina");
        
        Docs documento1 = new Docs();
        documento1.setDataEmissao("29-09-2017");
        documento1.setDocumento("16328761759");
        
        Docs documento2 = new Docs();
        documento2.setDataEmissao("29-09-2018");
        documento2.setDocumento("16328761759");
        
        Docs documento3 = new Docs();
        documento3.setDataEmissao("29-09-2019");
        documento3.setDocumento("16328761759");
        
        gerente1.setPessoa(pessoa);
        gerente1.setEndereco(endereco);
        gerente1.setDocumento1(documento1);
        gerente1.setDocumento2(documento2);
        gerente1.setDocumento3(documento3);
                
                
        return gerente1;
    }
    
    public static List<Gerente> list() {
        List<Gerente> gerentes = new ArrayList<Gerente>();
        
        Gerente gerente = new Gerente();
        
        Pessoa pessoa = new Pessoa();
        pessoa.setNome("Antônio");
        pessoa.setSobrenome("Henrique");
        pessoa.setGenero("Homem Cis");
        pessoa.setDataNascimento("26-10-1998");
        pessoa.setDdiContato("+55");
        pessoa.setTelefoneDdd("21 9 69179669");
        
        Endereco endereco = new Endereco();
        endereco.setCodigoPostal("24716591");
        endereco.setTipoLogradouro("Rua");
        endereco.setLogradouro("Soares dos Reis");
        endereco.setSubdivisao1("América do Sul");
        endereco.setSubdivisao2("Brasil");
        endereco.setSubdivisao3("Sudeste");
        endereco.setSubdivisao4("Rio de Janeiro");
        endereco.setSubdivisao5("Região Metropolitana");
        endereco.setSubdivisao6("São Gonçalo");
        endereco.setSubdivisao7("Jardim Catarina");
        
        Docs documento1 = new Docs();
        documento1.setDataEmissao("29-09-2017");
        documento1.setDocumento("16328761759");
        
        Docs documento2 = new Docs();
        documento2.setDataEmissao("29-09-2018");
        documento2.setDocumento("16328761759");
        
        Docs documento3 = new Docs();
        documento3.setDataEmissao("29-09-2019");
        documento3.setDocumento("16328761759");
        
        gerente.setPessoa(pessoa);
        gerente.setEndereco(endereco);
        gerente.setDocumento1(documento1);
        gerente.setDocumento2(documento2);
        gerente.setDocumento3(documento3);
    
        gerentes.add(gerente);
        
        Gerente gerente2 = new Gerente();
        
        Pessoa pessoa2 = new Pessoa();
        pessoa2.setNome("Henrique");
        pessoa2.setSobrenome("Junior");
        pessoa2.setGenero("Homem Cis");
        pessoa2.setDataNascimento("15-10-1998");
        pessoa2.setDdiContato("+351");
        pessoa2.setTelefoneDdd("12 1 96696917");
        
        Endereco endereco2 = new Endereco();
        endereco2.setCodigoPostal("12358295");
            endereco2.setTipoLogradouro("Avenida");
        endereco2.setLogradouro("Reis dos Soares");
        endereco2.setSubdivisao1("Europa");
        endereco2.setSubdivisao2("Portugal");
        endereco2.setSubdivisao3("Sul");
        endereco2.setSubdivisao4("Algarve");
        endereco2.setSubdivisao5("Centro");
        endereco2.setSubdivisao6("Santo Gonçalves");
        endereco2.setSubdivisao7("Floresta Catarina");
        
        Docs documento12 = new Docs();
        documento12.setDataEmissao("27-09-2020");
        documento12.setDocumento("291632826");
        
        Docs documento22 = new Docs();
        documento22.setDataEmissao("27-09-2021");
        documento22.setDocumento("291632826");
        
        Docs documento32 = new Docs();
        documento32.setDataEmissao("27-09-2022");
        documento32.setDocumento("291632826");
        
        gerente.setPessoa(pessoa);
        gerente.setEndereco(endereco);
        gerente.setDocumento1(documento1);
        gerente.setDocumento2(documento2);
        gerente.setDocumento3(documento3);
    
        gerentes.add(gerente);
        
        return gerentes;
    }
}
