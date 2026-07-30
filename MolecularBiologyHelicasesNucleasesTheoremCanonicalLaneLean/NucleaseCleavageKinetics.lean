import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure NucleaseCleavageKinetics where
  nucleaseType : Type u
  dnaTarget : Type v
  cleavageRate : Type w
  sequenceSpecificity : Prop
  metalIonDependence : Prop
  productReleaseRate : Prop

structure NucleaseCleavageEvidence (N : NucleaseCleavageKinetics) where
  cleavageRateClosed : Prop
  sequenceSpecificityClosed : Prop
  metalIonDependenceClosed : Prop
  productReleaseRateClosed : Prop

def NucleaseCleavageClosed (N : NucleaseCleavageKinetics) : Prop :=
  N.cleavageRate ∧ N.sequenceSpecificity ∧ N.metalIonDependence ∧ N.productReleaseRate

theorem nuclease_cleavage_closed_from_evidence (N : NucleaseCleavageKinetics) (E : NucleaseCleavageEvidence N) :
  NucleaseCleavageClosed N := by
  exact And.intro E.cleavageRateClosed (And.intro E.sequenceSpecificityClosed (And.intro E.metalIonDependenceClosed E.productReleaseRateClosed))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse