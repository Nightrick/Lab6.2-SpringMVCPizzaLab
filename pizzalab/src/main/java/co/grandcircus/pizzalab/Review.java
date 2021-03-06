package co.grandcircus.pizzalab;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.lang.NonNull;

public class Review {
	
	@NotEmpty(message="Name must be filled out.")
	String name;
	
	
	@NotBlank(message="Comment must be filled out.")
	@Size(min = 5, max = 500, message = "Comments must be between 5 and 500 characters.")
	String comment;
	
	@NotEmpty(message="Rating must be filled out.")
	String rating;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}

}
