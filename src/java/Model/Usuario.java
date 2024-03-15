/*
 */
package Model;

/**
 *
 * @author OTEROTKD
 */
public class Usuario {
    private int Cedula;
    private String Nombre;
    private String Apellido;
    private long Telefono; 
    private String Email;
    private String Contraseña;
    private String Nueva_Contraseña;

    public Usuario() {
    }

    public Usuario(int Cedula, String Nombre, String Apellido,long Telefono, String Email, String Contraseña, String Nueva_Contraseña) {
        this.Cedula = Cedula;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Telefono = Telefono;
        this.Email = Email;
        this.Contraseña = Contraseña;
        this.Nueva_Contraseña= Nueva_Contraseña;
    }

    public int getCedula() {
        return Cedula;
    }

    public void setCedula(int Cedula) {
        this.Cedula = Cedula;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public long getTelefono() {
        return Telefono;
    }

    public void setTelefono(long Telefono) {
        this.Telefono = Telefono;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }
  public String getNueva_Contraseña() {
        return Nueva_Contraseña;
    }

    public void setNueva_Contraseña(String Nueva_Contraseña) {
        this.Nueva_Contraseña = Nueva_Contraseña;
    }
   

   
}
