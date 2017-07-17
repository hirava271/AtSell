package send;

import javax.mail.Session;


public class sendmail {

	
	private static EmailConfiguration configuration;
    public static boolean sendMail(String email,String pwd,String sendTo,String Cc, String message, String subject,String[] files,String mode) {
    	try{
        configuration = new EmailConfiguration();

        configuration.email = email;
        configuration.host = ("smtp.gmail.com");
        configuration.port = ("465");
        configuration.auth = ("true");
        configuration.smtp_starttls = "smtp";
        configuration.protocol = "configuration_protocol";
        configuration.socketFactoryPort = "465";
        configuration.socketFactoryClass = "javax.net.ssl.SSLSocketFactory";
        configuration.socketFactoryFallback = "false";
        configuration.debug = "false";
        configuration.quitwait = "configuration_quitwait";
        configuration.userName = email;
        configuration.password = pwd;

        Session session = configuration.configure();
        EmailMessage msg = null;

        msg = new EmailMessage(session);
        //msg.to=txtTo.getText();
        msg.setTo(sendTo);

        msg.setDisplayName("No Internet Connetction");
        //msg.cc=txtCC.getText();
//            msg.setCc(jtxtcc.getText());
        //msg.from=cmbFrom.getSelectedItem().toString();
        msg.setFrom(email);
        //msg.subject=txtSubject.getText();
        msg.setSubject(subject);
        //msg.messageText=txtMessage.getText();
        msg.setMessageText(message);
        msg.setCc(Cc);
        msg.setFiles(files);
        
    	
        return msg.sendMessage(mode);
    	}catch(Exception ex){
    		System.out.println(ex.getMessage());
    	}
    	return false;
    }
}