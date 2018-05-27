package org.util;

/**
 * 业务异常
 * @author 黄贵
 * @date 2018年1月10日 下午6:37:45
 * @version 1.0
 */
public class BusinessException extends RuntimeException {
	private static final long serialVersionUID = -6640480390577049207L;

	public BusinessException() {
	}

	public BusinessException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public BusinessException(String message, Throwable cause) {
		super(message, cause);
	}

	public BusinessException(String message) {
		super(message);
	}

	public BusinessException(Throwable cause) {
		super(cause);
	}
}
