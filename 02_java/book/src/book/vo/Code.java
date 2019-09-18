package book.vo;

import java.math.BigInteger;

public class Code {

	private BigInteger code;
	private BigInteger pCode;
	private String codeNm;
	private String codeVal;
	private char useYn;
	private String codeDesc;
	private BigInteger sortOrder;
	private String regId;
	private String regDate;
	private String modId;
	private String modDate;
	
	public Code() {
		super();
	}

	public BigInteger getCode() {
		return code;
	}

	public void setCode(BigInteger code) {
		this.code = code;
	}

	public BigInteger getpCode() {
		return pCode;
	}

	public void setpCode(BigInteger pCode) {
		this.pCode = pCode;
	}

	public String getCodeNm() {
		return codeNm;
	}

	public void setCodeNm(String codeNm) {
		this.codeNm = codeNm;
	}

	public String getCodeVal() {
		return codeVal;
	}

	public void setCodeVal(String codeVal) {
		this.codeVal = codeVal;
	}

	public char getUseYn() {
		return useYn;
	}

	public void setUseYn(char useYn) {
		this.useYn = useYn;
	}

	public String getCodeDesc() {
		return codeDesc;
	}

	public void setCodeDesc(String codeDesc) {
		this.codeDesc = codeDesc;
	}

	public BigInteger getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(BigInteger sortOrder) {
		this.sortOrder = sortOrder;
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
		result = prime * result + ((code == null) ? 0 : code.hashCode());
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
		Code other = (Code) obj;
		if (code == null) {
			if (other.code != null)
				return false;
		} else if (!code.equals(other.code))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "코드 [code=" + code + ", pCode=" + pCode + ", codeNm=" + codeNm + ", codeVal=" + codeVal + ", useYn="
				+ useYn + ", codeDesc=" + codeDesc + ", sortOrder=" + sortOrder + ", regId=" + regId + ", regDate="
				+ regDate + ", modId=" + modId + ", modDate=" + modDate + "]";
	}
	
	
}
