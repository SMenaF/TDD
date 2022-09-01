/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author sofia
 */
public class Usuario {

    public int getUsu_id() {
        return usu_id;
    }

    public void setUsu_id(int usu_id) {
        this.usu_id = usu_id;
    }

    public String getUsu_nombre() {
        return usu_nombre;
    }

    public void setUsu_nombre(String usu_nombre) {
        this.usu_nombre = usu_nombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRol_usuario() {
        return rol_usuario;
    }

    public void setRol_usuario(int rol_usuario) {
        this.rol_usuario = rol_usuario;
    }
    
    private int usu_id;
    private String usu_nombre;
    private String password;
    private int rol_usuario;
    
}
