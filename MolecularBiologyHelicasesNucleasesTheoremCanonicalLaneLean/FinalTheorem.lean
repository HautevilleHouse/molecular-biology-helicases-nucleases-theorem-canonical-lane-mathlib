import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

def ConstrainedHelicaseNucleaseClosure (A : AdmissibleHelicaseNucleaseClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_helicase_nuclease_endgame (A : AdmissibleHelicaseNucleaseClass) :
    ConstrainedHelicaseNucleaseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse
