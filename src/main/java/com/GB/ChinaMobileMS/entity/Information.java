package com.GB.ChinaMobileMS.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class Information implements Serializable {
	
	

	private String topic;
	private Timestamp time;
	private String content;
	private int recomandRoleId;
	
	public String getTopic() {
		return topic;
	}




	public void setTopic(String topic) {
		this.topic = topic;
	}







	public Timestamp getTime() {
		return time;
	}




	public void setTime(Timestamp time) {
		this.time = time;
	}




	public String getContent() {
		return content;
	}




	public void setContent(String content) {
		this.content = content;
	}




	public int getRecomandRoleId() {
		return recomandRoleId;
	}




	public void setRecomandRoleId(int recomandRoleId) {
		this.recomandRoleId = recomandRoleId;
	}




	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + recomandRoleId;
		result = prime * result + ((time == null) ? 0 : time.hashCode());
		result = prime * result + ((topic == null) ? 0 : topic.hashCode());
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
		Information other = (Information) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (recomandRoleId != other.recomandRoleId)
			return false;
		if (time == null) {
			if (other.time != null)
				return false;
		} else if (!time.equals(other.time))
			return false;
		if (topic == null) {
			if (other.topic != null)
				return false;
		} else if (!topic.equals(other.topic))
			return false;
		return true;
	}




	@Override
	public String toString() {
		return "Information [topic=" + topic + ", time=" + time + ", content="
				+ content + ", recomandRoleId=" + recomandRoleId + "]";
	}


	



}
