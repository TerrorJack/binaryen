;; NOTE: Assertions have been generated by update_lit_checks.py and should not be edited.

;; Check that string types are emitted properly in the binary format.

;; RUN: foreach %s %t wasm-opt -all --roundtrip -S -o - | filecheck %s

(module
  ;; CHECK:      (func $foo (param $a (ref null string)) (param $b (ref null stringview_wtf8)) (param $c (ref null stringview_wtf16)) (param $d (ref null stringview_iter)) (param $e (ref null string)) (param $f (ref null stringview_wtf8)) (param $g (ref null stringview_wtf16)) (param $h (ref null stringview_iter)) (param $i (ref string)) (param $j (ref stringview_wtf8)) (param $k (ref stringview_wtf16)) (param $l (ref stringview_iter))
  ;; CHECK-NEXT:  (nop)
  ;; CHECK-NEXT: )
  (func $foo
    (param $a stringref)
    (param $b stringview_wtf8)
    (param $c stringview_wtf16)
    (param $d stringview_iter)
    (param $e (ref null string))
    (param $f (ref null stringview_wtf8))
    (param $g (ref null stringview_wtf16))
    (param $h (ref null stringview_iter))
    (param $i (ref string))
    (param $j (ref stringview_wtf8))
    (param $k (ref stringview_wtf16))
    (param $l (ref stringview_iter))
  )
)