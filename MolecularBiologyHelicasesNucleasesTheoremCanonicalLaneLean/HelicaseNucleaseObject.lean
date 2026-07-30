import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelNucDomain where
  carrier : Type
  dnaSubstrate : Type
  helicaseMotor : Type
  nucleaseDomain : Type
  atpHydrolysis : Prop
  translocation : Prop
  unwinding : Prop
  cleavage : Prop
  coordination : Prop
  atpHydrolysisTerm : atpHydrolysis
  translocationTerm : translocation
  unwindingTerm : unwinding
  cleavageTerm : cleavage
  coordinationTerm : coordination

structure AdmittedHelicaseNucleaseObject where
  domain : HelNucDomain
  completeHelicaseNuclease : Prop
  pathwayResolution : Prop
  conclusion : completeHelicaseNuclease ∧ pathwayResolution

def HelNucWitnessClosed (O : AdmittedHelicaseNucleaseObject) : Prop :=
  O.completeHelicaseNuclease ∧ O.pathwayResolution

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse