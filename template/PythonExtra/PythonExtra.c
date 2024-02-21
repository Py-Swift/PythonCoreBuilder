
#include "PythonExtra.h"


PyObject* PyNone = Py_None;
PyObject* PyTrue = Py_True;
PyObject* PyFalse = Py_False;

PyObject** PySequence_FastItems(PyObject *o) { return PySequence_Fast_ITEMS(o); }
//PyObject* PythonSequence_Fast_GET_ITEM(PyObject *o, Py_ssize_t i) { return PySequence_Fast_GET_ITEM(o, i); }
Py_ssize_t PySequence_FastSize(PyObject *o) { return PySequence_Fast_GET_SIZE(o); }



Py_buffer *PyMemoryView_GetBuffer(PyObject *mview) { return PyMemoryView_GET_BUFFER(mview);}


unsigned int PyUnicode_GetKind(PyObject *o) {return PyUnicode_KIND(o);}


PyTypeObject NewPyType(PyTypeObject *type) {
	PyTypeObject t = {
		PyVarObject_HEAD_INIT(type, 0)
	};
	return t;
}
