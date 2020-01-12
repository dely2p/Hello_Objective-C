# Hello_Objective-C
Let's study Objective-C


> First Project

1. Objective-C 특성
	- main() `@autoreleasepool` 안에서 코드를 작성해야 한다.
	-  Objective-C는 정의부와 구현부로 나뉘는데 다음과 같다.
	
		```Objective-C
		@interface Vehicle : NSObject { // 정의부
			// member variable
		}
		//member method
		@end
		
		@implementation Vehicle // 구현부
		
		@end
		
		int main() {
		
		}
		```

2. Object 분류
	- Object는 Class Object와 Instance Object로 나뉘어진다.
	
		1) Class Object
		
		- Class는 `member variable`영역과 `member method`영역으로 나뉘어진다.
		- member variable은 정의부 중괄호 안에, member method는 밖에 코드를 작성한다.
		- member variable은 초기화를 할 수 없다.(default 0으로 정의됨)
		- member method는 정의부에 정의 후에 구현부에  중괄호를 열어 작성한다.
		- `-`: 인스턴스 메소드(동적할당을 해서 인스턴스를 만들어야 쓸 수 있음) / `+`: 클래스 메소드(동적할당을 하지 않아도 쓸 수 있음)
			
		2) NSObject
		
		- 모든 Class들은 최상위 클래스인 NSObject를 상속받게 된다.
		- new & alloc & init
			- new
				-  instance화 된 클래스 생성(메모리 heap 영역에 동적할당 하게 됨)
				-  alloc과 init을 합쳐놓은 것
			- alloc
				- 클래스 메소드
				- 새로운 인스턴스를 리턴해줌
			- init
				- 인스턴스 메소드
				- 메모리에 할당된 후 즉시 새로운 Object를 초기화 해서 구현하는 부분

3. Property & Synthesize
	- getter, setter을 대신하여 쓸 수 있는 것이 Property와 Synthesize이다.
	- 다음과 같이 정의부에 Property를, 구현부에 Synthesize를 쓸 수 있다.
	
		```Objective-C
		@property int wheels; // 정의부
		@property int seats;
		
		@synthesize wheels; // 구현부
		@synthesize seats;
		```
4. Property Option & Dot operator
	- 프로퍼티명을 바꾸고 싶을 때는 다음과 같이 바꿀 수 있다.

		```Objective-C
		// @property int wheels;
		@property (getter=getWheels, setter=wheels:) int wheels;
		```
		
	- `.` 연산자를 사용할 수 있다.
	
		```Objective-C
		// [hello setWheels: 4];
		hello.setWheels = 4;
		```
		
	- 메소드에서 여러개의 프로퍼티를 받고 싶을 때는 다음과 같이 쓸 수 있다.
	
		```Objective-C
		-(void)setWheels: (int)w Seats: (int)s; // 정의부
		-(void)setWheels: (int)w Seats: (int)s {  // 구현부
		    wheels = w;
		    seats = s;
		}
		[hello setWheels:4 Seats:2]; // 사용 시
		```
		
5. 조건문(if-else, switch)
	-  조건문은 다른 언어와 동일하다.
	
		```Objective-C
		if(hello.wheels == 4) {
			NSLog(@"wheels : 4");
		}else {
			NSLog(@"no");
		}
		```
    
		```Objective-C
		switch (hello.seats) {
			case 4:
				NSLog(@"wheels : 4");
				break;
			case 2:
				NSLog(@"wheels : 2");
				break;
			default:
				NSLog(@"no");
				break;
		}
		```

6. 반복문(for, while)
	- 반복문도 다른 언어와 동일하다.
	
		```Objective-C
		for(int i=0;i<hello.wheels;i++) {
			NSLog(@"wheels no %i", i);
		}
		int i=0;
		while(i<hello.seats) {
			NSLog(@"seats no %i", i);
			i++;
		}
		``` 


> NSString

1. NSString 초기화 방법
	- 다음 3가지 방법은 모두 동일한 결과를 보인다. 메모리 동적할당과 동시에 값을 초기화 하게 됨.

	```Objective-C
	NSString *str = [[NSString alloc]init];
	str = @"This is NSString";
	
	NSString *str2 = [[NSString alloc]initWithString: @"This is NSString2"]; // convenience method
	
	NSString *str3 = @"This is NSString2";
	```
	