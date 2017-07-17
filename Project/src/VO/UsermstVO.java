package VO;

import java.io.Serializable;

public class UsermstVO implements Serializable {
int id;
String username;
String password;
String usertype;
String email;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUsertype() {
	return usertype;
}
public void setUsertype(String usertype) {
	this.usertype = usertype;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
