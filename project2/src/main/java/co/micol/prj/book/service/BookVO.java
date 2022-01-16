package co.micol.prj.book.service;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BookVO {
	private String book_isbn; //���� ISBN P.K(�Ϸù�ȣ)
	private String book_name; // ���� �̸�
	private String book_content; //���� ����
	private String book_write; // �۾���
	private int book_page; //�� ������ ��
	private String book_publis; //���ǻ�
	private String book_picture; //�̹��� �̸�
	private String book_pfile; //�̹��� �����̸�
	private double book_review; //��������
	private int book_cnt; //��ȸ��
	private String book_cheonggu; //�帣
	
}
