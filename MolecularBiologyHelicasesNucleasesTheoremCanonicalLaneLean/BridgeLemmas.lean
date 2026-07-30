import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.HelicaseClosure

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleHelicaseNucleaseClass) : Prop :=
  A.object.translocationActivity ∧ A.object.cleavageActivity

theorem bridge_from_admissible_class (A : AdmissibleHelicaseNucleaseClass) :
    bridgeClosed A := by
  exact And.intro A.object.translocationActivity A.object.cleavageActivity

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse
