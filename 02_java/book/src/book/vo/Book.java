package book.vo;

import java.math.BigDecimal;

public class Book {
	
	private BigDecimal bookSeq;
	private String isbn;
	private String title;
	private String author;
	private String content;
	private BigDecimal companyCd;
	private String companyNm;
	private BigDecimal totalPage;
	private BigDecimal quantity;
	private String regId;
	private String regDate;
	private String modId;
	private String modDate;
	
	public Book () {
		super();
	}

	public BigDecimal getBookSeq() {
		return bookSeq;
	}

	public String getCompanyNm() {
		return companyNm;
	}

	public void setCompanyNm(String companyNm) {
		this.companyNm = companyNm;
	}

	public void setBookSeq(BigDecimal bookSeq) {
		this.bookSeq = bookSeq;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public BigDecimal getCompanyCd() {
		return companyCd;
	}

	public void setCompanyCd(BigDecimal companyCd) {
		this.companyCd = companyCd;
	}

	public BigDecimal getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(BigDecimal totalPage) {
		this.totalPage = totalPage;
	}

	public BigDecimal getQuantity() {
		return quantity;
	}

	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getModId() {
		return modId;
	}

	public void setModId(String modId) {
		this.modId = modId;
	}

	public String getModDate() {
		return modDate;
	}

	public void setModDate(String modDate) {
		this.modDate = modDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bookSeq == null) ? 0 : bookSeq.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book other = (Book) obj;
		if (bookSeq == null) {
			if (other.bookSeq != null)
				return false;
		} else if (!bookSeq.equals(other.bookSeq))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "책 정보 [bookSeq=" + bookSeq + ", isbn=" + isbn + ", title=" + title + ", author=" + author + ", content="
				+ content + ", companyCd=" + companyCd + "companyNm=" + companyNm + ", totalPage=" + totalPage + ", quantity=" + quantity
				+ ", regId=" + regId + ", regDate=" + regDate + ", modId=" + modId + ", modDate=" + modDate + "]";
	}
	
	
}
