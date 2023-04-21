import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                // resolveWith: 다른 속성에서도 사용할 수 있습니다.
                foregroundColor: MaterialStateProperty.resolveWith(
                  // MaterialState
                  // hovered - 호버링 상태 (마우스 커서를 올려놓은 상태)
                  // focused - 포커스 됐을 때 (텍스트 필드)
                  // pressed - 눌렸을 때 (O)
                  // dragged - 드래그 됐을 때
                  // selected - 선택 됐을 때 (체크박스, 라디오 버튼)
                  // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을 때
                  // disabled - 비활성화 됐을 때 (onPressed: null) (O)
                  // error - 에러상태 (텍스트 필드)
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }

                    return Colors.red;
                  },
                ),
                padding: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return EdgeInsets.all(100.0);
                    }
                    return EdgeInsets.all(20.0);
                  },
                ),
              ),
              child: Text(
                'ButtonStyle',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // 메인 색깔
                primary: Colors.red,
                // 글자 및 리플 애니메이션 효과 색깔
                onPrimary: Colors.black,
                // 그림자 색깔
                shadowColor: Colors.green,
                // 3D 입체감의 높이
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: Text(
                'ElevatedButton',
              ),
            ),
            // ElevatedButton와 같은데 onPrimary만 없음, 나머지는 동일함
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                // 글자 및 리플 애니메이션 효과 색깔
                primary: Colors.green,
                backgroundColor: Colors.yellow,
                elevation: 10.0,
              ),
              child: Text(
                'OutlinedButton',
              ),
            ),
            // ElevatedButton와 같은데 onPrimary만 없음, 나머지는 동일함
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                // 글자 및 리플 애니메이션 효과 색깔
                primary: Colors.brown,
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'TextButton',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
