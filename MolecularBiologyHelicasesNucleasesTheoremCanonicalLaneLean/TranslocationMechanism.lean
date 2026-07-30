import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure TranslocationMechanismPackage (A : AdmissibleClass) where
  ssDNABinding : Prop
  directionalMovement : Prop
  processivity : Prop
  rateMeasurement : Prop
  ssDNABindingClosed : ssDNABinding
  directionalMovementClosed : directionalMovement
  processivityClosed : processivity
  rateMeasurementClosed : rateMeasurement

def TranslocationMechanismClosed (A : AdmissibleClass) (P : TranslocationMechanismPackage A) : Prop :=
  P.ssDNABinding ∧ P.directionalMovement ∧ P.processivity ∧ P.rateMeasurement

theorem translocation_mechanism_closed_from_evidence (A : AdmissibleClass) (P : TranslocationMechanismPackage A) :
    TranslocationMechanismClosed A P := by
  exact And.intro P.ssDNABindingClosed
    (And.intro P.directionalMovementClosed
      (And.intro P.processivityClosed P.rateMeasurementClosed))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse
