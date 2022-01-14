package co.micol.prj.main.service;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class GenreVO {

	private String genre_id;
	private String genre_name;
	
	private BookVO bookVO;
}
