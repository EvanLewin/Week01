(* file: areaVolume.ml
   author: Bob Muller

   CSCI 1103 Computer Science 1 Honors

   This file contains functions computing area and volume.
*)

(* area : float -> float
 *)
let area radius = Lib.pi *. radius ** 2.0

(* volume : float -> float -> float
 *)
let volume radius height = height *. (area radius)

(* We can introduce a variable naming the area by using
   the let-in form.
 *)
let volume radius height =
  let circleArea = area radius
  in
  height *. circleArea

(* If we want to, we can make the types in the above explicit.
   In addition to providing documentation for a potential user
   of our functions OCaml can double-check for us to ensure that
   our function definition is consistent with our claims about
   it.
 *)
let area (radius : float) : float =
  Lib.pi *. radius ** 2.0

let volume (radius : float) (height : float) : float =
  let circleArea : float = area radius
  in
  height *. circleArea

let () = Lib.pfmt "(area 2.0) is %f\n" (area 2.0)
let () = Lib.pfmt "(volume 2.0 4.0) is %f\n" (volume 2.0 4.0)
