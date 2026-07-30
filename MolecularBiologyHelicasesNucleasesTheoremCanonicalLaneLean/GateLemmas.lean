import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleHelicaseNucleaseClass) : Prop :=
  A.endpointStatus ∨ A.remainderCarried

theorem gate_from_admissible_class (A : AdmissibleHelicaseNucleaseClass) :
    gateClosed A := by
  exact A.gateIndicator

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse
