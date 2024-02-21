//
//  File.swift
//  
//
//  Created by CodeBuilder on 21/01/2024.
//

import Foundation
import Python


typealias PythonType = UnsafeMutablePointer<PyTypeObject>?
extension Optional where Wrapped == UnsafeMutablePointer<PyTypeObject> {
	static func newType(_ t: PyTypeObject) -> Self {
		let new: Self = .allocate(capacity: 1)
		new?.pointee = t
		return new
	}

	static let PyLong = PythonType.newType(PyLong_Type)
}

extension PyPointer {

	static func ~=(l: PythonType, r: PyPointer) -> Bool  {
		PyObject_TypeCheck(r, l) == 1
	}

}

//public let pyLong_Type = PythonType.newType(PyLong_Type)!
//public let pyFloat_Type = PythonType.newType(PyFloat_Type)!
//public let pyUnicode_Type = PythonType.newType(PyUnicode_Type)!
//public let pyComplex_Type = PythonType.newType(PyComplex_Type)!
//public let pyBool_Type = PythonType.newType(PyBool_Type)!
//
//public let pyList_Type = PythonType.newType(PyList_Type)!
//public let pyDict_Type = PythonType.newType(PyDict_Type)!
//public let pyTuple_Type = PythonType.newType(PyTuple_Type)!
//public let pySet_Type = PythonType.newType(PySet_Type)!
//
//public let pyBytes_Type = PythonType.newType(PyBytes_Type)!
//public let pyByteArray_Type = PythonType.newType(PyByteArray_Type)!
//public let pyMemoryView_Type = PythonType.newType(PyMemoryView_Type)!
//
//
//public let pySuper_Type = PythonType.newType(PySuper_Type)!
//
//
//public let pyEnum_Type = PythonType.newType(PyEnum_Type)!
//public let pyNone_Type = PythonType.newType(_PyNone_Type)!
//
