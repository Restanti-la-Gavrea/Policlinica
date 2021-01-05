/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package policlinica;

import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.net.URL;
import java.util.ResourceBundle;

public class App extends Application implements Initializable {

	private Stage window;
	final private GUIFunctionality GUI = new GUIFunctionality();

	//main menu buttons
	@FXML Button userBtn;
	@FXML Button administratorBtn;
	@FXML Button angajatiBtn;
	@FXML Button orarBtn;
	@FXML Button finanteBtn;
	@FXML Button pacientiBtn;
	@FXML Button programariBtn;
	@FXML Button serviciiBtn;
	@FXML Button logOutBtn;

	@FXML BorderPane main;
	//login Screen elements
	@FXML TextField usernameField;
	@FXML TextField passwordField;

	//userTab labels
	@FXML Label numeLbl;
	@FXML Label prenumeLbl;
	@FXML Label nrContractLbl;
	@FXML Label adresaLbl;
	@FXML Label ibanLbl;
	@FXML Label nrTelefonLbl;
	@FXML Label emailLbl;
	@FXML Label angajatDataLbl;
	@FXML Button userEditBtn;

	@FXML TableView<AngajatTableItem> angajatiTable;

	public static void main(String[] args) {
		launch(args);
    }

    @FXML public void test(){
	    //asta e pentru tine baragan
    }

	@Override
	public void start(Stage primaryStage) throws Exception {
		Parent logInLayout;
		Scene logInScene;

		window = primaryStage;
		logInLayout = FXMLLoader.load(getClass().getResource("/logInLayout.fxml"));

		logInScene = new Scene(logInLayout, 800, 600);
		logInScene.getStylesheets().add("logInStyle.css");

		primaryStage.minWidthProperty().setValue(650);
		primaryStage.minHeightProperty().setValue(500);
		window.setTitle("Administrare Policlinica");
		window.setScene(logInScene);
		window.show();
	}

	@Override
	public void initialize(URL url, ResourceBundle resourceBundle) {

	}

	//log-In button
	@FXML public void logIn () throws Exception{ GUI.logIn(); }

	@FXML public void editUser(){

	}

	//urmatoarele functii sunt pentru butoanele din mainMenu
	@FXML public void setUserLayout() throws Exception{ GUI.showUserData(main); }
	@FXML public void setAdministratorLayout() throws Exception{

	}
	@FXML public void setAngajatiLayout() throws Exception{
		GUI.showAngajatiList(main);
	}
	@FXML public void setOrarLayout(){
	}
	@FXML public void setFinanteLayout(){
	}
	@FXML public void setPacientiLayout(){
	}
	@FXML public void setProgramariLayout(){
	}
	@FXML public void setServiciiLayout(){
	}
	@FXML public void logOut() throws Exception{GUI.logOut(); }


}
