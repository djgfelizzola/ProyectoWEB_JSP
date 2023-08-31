package Restaurante.Utilidades;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;

public class MensajeCorreo {

    public void EnviarMensajeCorreo(String correoD, String asunto, String MensajeE) throws MessagingException {

        try {
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");

            Session session = Session.getDefaultInstance(props);
            String correoEnvia = "pacomeralgomedellin@gmail.com";
            String contraseña = "Pacomeralgo2019";

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(correoEnvia));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(correoD));
            message.setSubject(asunto);
            message.setText(MensajeE);

            Transport t = session.getTransport("smtp");
            t.connect(correoEnvia, contraseña);
            t.sendMessage(message, message.getRecipients(Message.RecipientType.TO));

        } catch (AddressException ex) {
            Logger.getLogger(MensajeCorreo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
