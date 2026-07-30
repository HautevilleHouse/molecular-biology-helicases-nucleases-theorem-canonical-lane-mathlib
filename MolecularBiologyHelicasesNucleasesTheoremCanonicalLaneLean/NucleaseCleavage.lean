import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.HelicaseNucleaseObject

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure NucleaseCleavagePackage (O : HelNucDomain) where
  metalIonCoordination : Prop
  waterActivation : Prop
  scissilePhosphateAttacked : Prop
  productRelease : Prop
  cleavageTargeted : Prop
  metalIonCoordinationTerm : metalIonCoordination
  waterActivationTerm : waterActivation
  scissilePhosphateAttackedTerm : scissilePhosphateAttacked
  productReleaseTerm : productRelease
  cleavageTargetedTerm : cleavageTargeted

def NucleaseCleavageClosed (O : HelNucDomain) (N : NucleaseCleavagePackage O) : Prop :=
  N.metalIonCoordination ∧ N.waterActivation ∧ N.scissilePhosphateAttacked ∧
  N.productRelease ∧ N.cleavageTargeted

theorem nuclease_cleavage_closed_from_evidence (O : HelNucDomain) (N : NucleaseCleavagePackage O) :
    NucleaseCleavageClosed O N := by
  exact And.intro N.metalIonCoordinationTerm
    (And.intro N.waterActivationTerm
      (And.intro N.scissilePhosphateAttackedTerm
        (And.intro N.productReleaseTerm N.cleavageTargetedTerm)))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse