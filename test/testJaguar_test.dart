import 'package:testJaguar/testJaguar.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Contact awesome;

    setUp(() {
      awesome = Contact();
    });

    test('First Test', () {
      expect(awesome.isVerified, isTrue);
    });
  });
}
