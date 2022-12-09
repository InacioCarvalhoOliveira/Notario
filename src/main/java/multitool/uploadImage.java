package multitool;
import java.sql.ResultSet;
import java.sql.SQLException;
import database.DBQuery;
import mail.SendMail;

public class uploadImage {
	public int	   	idUsuario;
	public String 	foto;
	
	private String tableName	= "Notario.usuarios"; 
	private String fieldsName	= "idUsuario, foto";  
	private String fieldKey		= "idUsuario";
	
	private DBQuery dbQuery = new DBQuery(tableName, fieldsName, fieldKey);
	
	public uploadImage() {
		
	}
	
	public uploadImage( int idUsuario, String foto) {
		this.setIdUsuario(idUsuario);
		this.setFoto(foto);
	
	}

	
	public String toJson() {
		return(
				"{\n\t"+
						"'idUsuario':'"+this.getIdUsuario() + ""+"',\n\t"+						
						"'foto':'"+this.getFoto()+",'\n\t"+
						
				"}"
		);
	}	

	public String toString() {
		return(
				this.getIdUsuario() + ""+" | "+
				this.getFoto()+" | "
			
		);
	}
	
	private String[] toArray() {
		
		String[] temp =  new String[] {
				this.getIdUsuario() + "",				
				this.getFoto()
		
		};
		return(temp);
	}
	
	public void save() {
		if( this.getIdUsuario() > 0 ) {
			this.dbQuery.update(this.toArray());
		}else {
			this.dbQuery.insert(this.toArray());
		}
	}
	
	public void delete() {
		if( this.getIdUsuario() > 0 ) {
			this.dbQuery.delete(this.toArray());
		}
	}
	
	public ResultSet selectAll() {
		ResultSet resultset = this.dbQuery.select("");
		return(resultset);
	}
	
	public ResultSet selectBy( String field, String value ) {
		ResultSet resultset = this.dbQuery.select( " "+field+"='"+value+"'");
		return(resultset);
	}
	
	public ResultSet select( String where ) {
		ResultSet resultset = this.dbQuery.select(where);
		return(resultset);
	}
	
	public void enviarEmailComSenha( String mailFrom, String mailTo, String mailSubject, String mailBody ){
		
		String smtpHost = "smtp.gmail.com"; 
		String smtpPort = "587"; 
		String username = "usuario@gmail.com";
		String password = "senha123456";
		String auth     = "tls";  
		
		SendMail sendMail =  new SendMail( smtpHost,  smtpPort,  username,  password,  auth  );		
		sendMail.send( mailFrom, mailTo, mailSubject, mailBody );
		
	}
	
	
	public int getIdUsuario() {
		return idUsuario;
	}

	public String listAllHtml() {
		ResultSet rs =  this.dbQuery.select("");
		String saida = "<br>";
		saida += "<table border=1>";
		try {
			while (rs.next()) {
				saida += "<tr>";
		     
				saida += "<td>" + rs.getString("idUsuario" ) +  "</td>";
				saida += "<td>" + rs.getString("foto" ) +  "</td>";
				saida += "</tr> <br>";
			}
	   } catch (SQLException e) {
		 e.printStackTrace();
	   }
	   saida += "</table>";
	   return (saida);
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}


	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

}
