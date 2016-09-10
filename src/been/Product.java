package been;

public class Product {
	private Integer pro_id ;
	private String pro_name ;
	private String pro_price;
	private String pro_number;
	public String getPro_number() {
		return pro_number;
	}
	public void setPro_number(String pro_number) {
		this.pro_number = pro_number;
	}
	private String pro_kind;
	private String pro_image_; 
	private String pro_image_1;
	private String pro_image_2;	
	private String pro_image_3;	
	private String pro_image_4;
	private String desc;
	public Integer getPro_id() {
		return pro_id;
	}
	public void setPro_id(Integer pro_id) {
		this.pro_id = pro_id;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_price() {
		return pro_price;
	}
	public void setPro_price(String pro_price) {
		this.pro_price = pro_price;
	}
	public String getPro_kind() {
		return pro_kind;
	}
	public void setPro_kind(String pro_kind) {
		this.pro_kind = pro_kind;
	}
	public String getPro_image_() {
		return pro_image_;
	}
	public void setPro_image_(String pro_image_) {
		this.pro_image_ = pro_image_;
	}
	public String getPro_image_1() {
		return pro_image_1;
	}
	public void setPro_image_1(String pro_image_1) {
		this.pro_image_1 = pro_image_1;
	}
	public String getPro_image_2() {
		return pro_image_2;
	}
	public void setPro_image_2(String pro_image_2) {
		this.pro_image_2 = pro_image_2;
	}
	public String getPro_image_3() {
		return pro_image_3;
	}
	public void setPro_image_3(String pro_image_3) {
		this.pro_image_3 = pro_image_3;
	}
	public String getPro_image_4() {
		return pro_image_4;
	}
	public void setPro_image_4(String pro_image_4) {
		this.pro_image_4 = pro_image_4;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	@Override
	public String toString() {
		return "Product [pro_id=" + pro_id + ", pro_name=" + pro_name
				+ ", pro_price=" + pro_price + ", pro_number=" + pro_number
				+ ", pro_kind=" + pro_kind + ", pro_image_=" + pro_image_
				+ ", pro_image_1=" + pro_image_1 + ", pro_image_2="
				+ pro_image_2 + ", pro_image_3=" + pro_image_3
				+ ", pro_image_4=" + pro_image_4 + ", desc=" + desc + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((desc == null) ? 0 : desc.hashCode());
		result = prime * result + ((pro_id == null) ? 0 : pro_id.hashCode());
		result = prime * result
				+ ((pro_image_ == null) ? 0 : pro_image_.hashCode());
		result = prime * result
				+ ((pro_image_1 == null) ? 0 : pro_image_1.hashCode());
		result = prime * result
				+ ((pro_image_2 == null) ? 0 : pro_image_2.hashCode());
		result = prime * result
				+ ((pro_image_3 == null) ? 0 : pro_image_3.hashCode());
		result = prime * result
				+ ((pro_image_4 == null) ? 0 : pro_image_4.hashCode());
		result = prime * result
				+ ((pro_kind == null) ? 0 : pro_kind.hashCode());
		result = prime * result
				+ ((pro_name == null) ? 0 : pro_name.hashCode());
		result = prime * result
				+ ((pro_number == null) ? 0 : pro_number.hashCode());
		result = prime * result
				+ ((pro_price == null) ? 0 : pro_price.hashCode());
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
		Product other = (Product) obj;
		if (desc == null) {
			if (other.desc != null)
				return false;
		} else if (!desc.equals(other.desc))
			return false;
		if (pro_id == null) {
			if (other.pro_id != null)
				return false;
		} else if (!pro_id.equals(other.pro_id))
			return false;
		if (pro_image_ == null) {
			if (other.pro_image_ != null)
				return false;
		} else if (!pro_image_.equals(other.pro_image_))
			return false;
		if (pro_image_1 == null) {
			if (other.pro_image_1 != null)
				return false;
		} else if (!pro_image_1.equals(other.pro_image_1))
			return false;
		if (pro_image_2 == null) {
			if (other.pro_image_2 != null)
				return false;
		} else if (!pro_image_2.equals(other.pro_image_2))
			return false;
		if (pro_image_3 == null) {
			if (other.pro_image_3 != null)
				return false;
		} else if (!pro_image_3.equals(other.pro_image_3))
			return false;
		if (pro_image_4 == null) {
			if (other.pro_image_4 != null)
				return false;
		} else if (!pro_image_4.equals(other.pro_image_4))
			return false;
		if (pro_kind == null) {
			if (other.pro_kind != null)
				return false;
		} else if (!pro_kind.equals(other.pro_kind))
			return false;
		if (pro_name == null) {
			if (other.pro_name != null)
				return false;
		} else if (!pro_name.equals(other.pro_name))
			return false;
		if (pro_number == null) {
			if (other.pro_number != null)
				return false;
		} else if (!pro_number.equals(other.pro_number))
			return false;
		if (pro_price == null) {
			if (other.pro_price != null)
				return false;
		} else if (!pro_price.equals(other.pro_price))
			return false;
		return true;
	}
	public Product(Integer pro_id, String pro_name, String pro_price,
			String pro_number, String pro_kind, String pro_image_,
			String pro_image_1, String pro_image_2, String pro_image_3,
			String pro_image_4, String desc) {
		super();
		this.pro_id = pro_id;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.pro_number = pro_number;
		this.pro_kind = pro_kind;
		this.pro_image_ = pro_image_;
		this.pro_image_1 = pro_image_1;
		this.pro_image_2 = pro_image_2;
		this.pro_image_3 = pro_image_3;
		this.pro_image_4 = pro_image_4;
		this.desc = desc;
	}
	

	public Product() {
		
	}
	
}
