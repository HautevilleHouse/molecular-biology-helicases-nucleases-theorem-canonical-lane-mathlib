import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelicaseUnwindingPackage where
  helicaseType : Type
  dnaSubstrate : Type
  atpHydrolysis : Prop
  unwindingRate : Prop
  translocationProcessivity : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingPackage) where
  atpHydrolysisClosed : H.atpHydrolysis
  unwindingRateClosed : H.unwindingRate
  translocationProcessivityClosed : H.translocationProcessivity

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop :=
  H.atpHydrolysis ∧ H.unwindingRate ∧ H.translocationProcessivity

theorem helicase_unwinding_closed_from_evidence (H : HelicaseUnwindingPackage)
    (E : HelicaseUnwindingEvidence H) : HelicaseUnwindingClosed H := by
  exact And.intro E.atpHydrolysisClosed
    (And.intro E.unwindingRateClosed E.translocationProcessivityClosed)

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse