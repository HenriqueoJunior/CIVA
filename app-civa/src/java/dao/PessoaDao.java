/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Endereco;
import model.Pais;
import model.Pessoa;

/**
 *
 * @author miguel.bispo
 */
public class PessoaDao {

    public static Pessoa find(Pessoa pbusca) {
        Pessoa p = new Pessoa();
        
        if (pbusca.getNome().equals("João") && pbusca.getSobrenome().equals("Lopes")) {
            p.setNome(pbusca.getNome());
            p.setSobrenome(pbusca.getSobrenome());
            p.setTelefoneDdd("21900101123");
            p.setGenero("Masculino");
            p.setDataNascimento("02-04-1999");
        }
        
        return p;
    }
    
    
    public static boolean insert(Pessoa pinsert) {
        boolean resultado = false;
        
        if (pinsert.getNome()!=null) {
            //se conseguir inserir no banco
            
            Pais pais = PaisDao.find("Brasil");
            
            Endereco e = new Endereco();
            e.setIdPais(pais.getIdPais());
            EnderecoDao.insert(e);
            
            resultado = true;
        }
        
        return resultado;
    }
    
    
    public static Pessoa selectAll(String pattern) {
        
        return new Pessoa();
    }
}
