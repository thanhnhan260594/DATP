/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class Contact {

    private String Name;
    private String Email;
    private String Subject;
    private String Message;

    public Contact() {
    }

    public Contact(String Name, String Email, String Subject, String Message) {
        this.Name = Name;
        this.Email = Email;
        this.Subject = Subject;
        this.Message = Message;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getSubject() {
        return Subject;
    }

    public void setSubject(String Subject) {
        this.Subject = Subject;
    }

    public String getMessage() {
        return Message;
    }

    public void setMessage(String Message) {
        this.Message = Message;
    }
    
    

}
