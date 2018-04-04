package guava;

import java.util.Objects;

import org.springframework.util.Assert;

import com.google.common.base.MoreObjects;

import entity.User;

public class ObjectsDemo {
	public static void main(String[] args) {
//		System.out.println(Objects.nonNull(null));
//		System.out.println(Objects.isNull(null));
//		System.out.println(null == null);
//		Assert.notNull(null,"不能为空");
		
		//判断两个对象可能是空的对象否相等, 如果是对象, 需要重写equels和hashcode方法
		User u1 = new User("lxn", 28);
		u1 = null;
		User u2 = new User("lxn", 28);
		boolean equals = Objects.equals(u1, u2);
		System.out.println(equals);
		
		//这个方法是在Objects过期后 官方推荐使用的替代品，该类最大的好处就是不用大量的重写toString，用一种很优雅的方式实现重写，或者在某个场景定制使用。
		String string = MoreObjects.toStringHelper("U2ser")
				.add("name", u2.getName())
				.add("a1ge", u2.getAge())
				.toString();
		System.out.println(string);//U2ser{name=lxn, a1ge=28}
		
	}
}
