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
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.net.URL;
import java.util.ResourceBundle;

public class App extends Application implements Initializable {

	private Stage window;

	//main menu buttons
	@FXML Button userBtn;
	@FXML Button administratorBtn;
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

	public static void main(String[] args) {
		launch(args);
    }

	@Override
	public void start(Stage primaryStage) throws Exception {
		Parent logInLayout;
		Scene logInScene;

		window = primaryStage;
		logInLayout = FXMLLoader.load(getClass().getResource("/logInLayout.fxml"));

		logInScene = new Scene(logInLayout, 800, 600);
		logInScene.getStylesheets().add("logInStyle.css");

		primaryStage.minWidthProperty().setValue(600);
		primaryStage.minHeightProperty().setValue(400);
		window.setTitle("Administrare Policlinica");
		window.setScene(logInScene);
		window.show();
	}

	@Override
	public void initialize(URL url, ResourceBundle resourceBundle) {

	}

	//log-In button
	@FXML public void logIn () throws Exception{

		double height = ((Stage)(Stage.getWindows().get(0))).getHeight() - 39;
		double width = ((Stage)(Stage.getWindows().get(0))).getWidth() - 16;

		Parent mainLayout = FXMLLoader.load(getClass().getResource("/mainLayout.fxml"));
		Scene mainScene = new Scene(mainLayout, width, height);
		mainScene.getStylesheets().add("mainStyle.css");
		Stage appStage = (Stage)(Stage.getWindows().get(0));

		appStage.setScene(mainScene);
		//appStage.show();
	}

	//urmatoarele functii sunt pentru butoanele din mainMenu
	@FXML public void setUserLayout() throws Exception{
		VBox temp = FXMLLoader.load(getClass().getResource("/userLayout.fxml"));
		main.setCenter(temp);
	}
	@FXML public void setAdministratorLayout(){
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
	@FXML public void logOut() throws Exception{
		double height = ((Stage)(Stage.getWindows().get(0))).getHeight() - 39;
		double width = ((Stage)(Stage.getWindows().get(0))).getWidth() - 16;

		Parent logInLayout = FXMLLoader.load(getClass().getResource("/logInLayout.fxml"));
		Scene tempScene = new Scene(logInLayout, width, height);
		tempScene.getStylesheets().add("logInStyle.css");
		Stage appStage = (Stage)(Stage.getWindows().get(0));
		appStage.setScene(tempScene);
	}


}
