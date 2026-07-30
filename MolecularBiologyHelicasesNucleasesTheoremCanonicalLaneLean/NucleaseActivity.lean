import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure NucleaseActivityPackage (A : AdmissibleClass) where
  activeSite : Prop
  metalIonCoordination : Prop
  cleavageMechanism : Prop
  substrateSpecificity : Prop
  activeSiteClosed : activeSite
  metalIonCoordinationClosed : metalIonCoordination
  cleavageMechanismClosed : cleavageMechanism
  substrateSpecificityClosed : substrateSpecificity

def NucleaseActivityClosed (A : AdmissibleClass) (P : NucleaseActivityPackage A) : Prop :=
  P.activeSite ∧ P.metalIonCoordination ∧ P.cleavageMechanism ∧ P.substrateSpecificity

theorem nuclease_activity_closed_from_evidence (A : AdmissibleClass) (P : NucleaseActivityPackage A) :
    NucleaseActivityClosed A P := by
  exact And.intro P.activeSiteClosed
    (And.intro P.metalIonCoordinationClosed
      (And.intro P.cleavageMechanismClosed P.substrateSpecificityClosed))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse
