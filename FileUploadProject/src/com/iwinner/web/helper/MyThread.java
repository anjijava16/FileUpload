package com.iwinner.web.helper;

class MyThread implements  Runnable {
	public static void main(String[] args) {
		MyThread t = new MyThread();
		Thread x = new Thread(t);
		x.start();
	}

	public void run() {
		for (int i = 0; i < 300; ++i) {
			System.out.print(i + "..");
		}
	}
}