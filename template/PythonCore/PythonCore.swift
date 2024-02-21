@_exported import Python
@_exported import PythonExtra
import Foundation

public typealias PyPointer = UnsafeMutablePointer<PyObject>

func hmmm() {

	
}
public extension Date {
	init(object: PyPointer) {
		fatalError()
		
	}
}

public extension PyPointer {
	
	static func helloWorld() -> String {
		fatalError()
	}
	
}

public extension PyUnicode_Kind {
	static let utf8 = PyUnicode_1BYTE_KIND
	static let uft16 = PyUnicode_2BYTE_KIND
	static let utf32 = PyUnicode_4BYTE_KIND
}
