/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package send;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.swing.JOptionPane;

/**
 * 
 * @author Administrator
 */
public class EmailMessage {

	private String to;
	private String displayName;
	private String from;
	private String cc = "";
	private String bcc = "";
	private String files[] = new String[5];
	private String subject = "";
	private String messageText = "";

	private Session session;

	public EmailMessage(Session session) {
		this.session = session;
	}

	private boolean success = false;

	public String getBcc() {
		return bcc;
	}

	public void setBcc(String bcc) {
		this.bcc = bcc;
	}

	public String getCc() {
		return cc;
	}

	public void setCc(String cc) {
		this.cc = cc;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getMessageText() {
		return messageText;
	}

	public void setMessageText(String messageText) {
		this.messageText = messageText;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public boolean sendMessage(String mode) {

		try {
			Message msg = new MimeMessage(session);

			msg.setFrom(new InternetAddress(from));

			InternetAddress internetAddress_to[] = getAddreesses(to);

			msg.setRecipients(Message.RecipientType.TO, internetAddress_to);
			System.out.println("before cc");
			if (!cc.equals("")) {
				InternetAddress internetAddress_cc[] = getAddreesses(cc);
				msg.setRecipients(Message.RecipientType.CC, internetAddress_cc);
			}
			if (!bcc.equals("")) {
				msg.setRecipient(Message.RecipientType.BCC,
						new InternetAddress(bcc));
			}
			System.out.println("after bcc");

			msg.setSubject(subject);
			if (files != null) {
				MimeBodyPart mbp1 = new MimeBodyPart();
				mbp1.setContent(messageText, "text/html");

				Multipart mp = new MimeMultipart();
				mp.addBodyPart(mbp1);

				for (int i = 0; i < files.length; i++) {
					if (files[i] != null && !files[i].equalsIgnoreCase("")) {

						MimeBodyPart mbp2 = new MimeBodyPart();

						FileDataSource fds = new FileDataSource(files[i]);
						mbp2.setDataHandler(new DataHandler(fds));
						if (mode.equalsIgnoreCase("inline")) {
							mbp2.setHeader("Content-ID", "<image" + i + ">");
						}
						mbp2.setFileName(fds.getName());

						mp.addBodyPart(mbp2);

					}
				}

				msg.setContent(mp);
			}
			Transport.send(msg);
			success = true;

		} catch (AddressException ex) {
			success = false;
			System.out.println("asdsad" + ex.getMessage());
			JOptionPane.showMessageDialog(null, "Sending failed to " + this.to,
					"Invalid Email Address", JOptionPane.ERROR_MESSAGE);
		} catch (Exception ex) {
			success = false;
			System.out.println("asdsad" + ex.getMessage());
			JOptionPane.showMessageDialog(null, "Sending failed to " + this.to,
					"Could not send to '" + displayName + "'",
					JOptionPane.ERROR_MESSAGE);
		}

		return success;
	}

	private InternetAddress[] getAddreesses(String addresses) throws Exception {

		InternetAddress internetAddress[] = null;

		// try {
		String multiple_to[] = addresses.split(",");
		internetAddress = new InternetAddress[multiple_to.length];

		for (int addCount = 0; addCount < multiple_to.length; addCount++) {

			String eID = multiple_to[addCount].trim();
			internetAddress[addCount] = new InternetAddress(eID);

		}
		// }
		// catch(Exception ex) {
		// MedikingDMain.gSysLib.printToLogFile("Error in getAddreesses : ",ex);
		// }

		return internetAddress;

	}

}
