import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelicaseMechanismAnalyticCertificate where
  atpBinding : Prop
  translocation : Prop
  strandSeparation : Prop
  processivity : Prop
  atpBindingClosed : atpBinding
  translocationClosed : translocation
  strandSeparationClosed : strandSeparation
  processivityClosed : processivity

def HelicaseMechanismAnalyticCertificateClosed (C : HelicaseMechanismAnalyticCertificate) : Prop :=
  C.atpBinding ∧ C.translocation ∧ C.strandSeparation ∧ C.processivity

theorem helicase_mechanism_analytic_certificate_closed (C : HelicaseMechanismAnalyticCertificate) :
    HelicaseMechanismAnalyticCertificateClosed C := by
  exact And.intro C.atpBindingClosed (And.intro C.translocationClosed (And.intro C.strandSeparationClosed C.processivityClosed))

structure NucleaseDomainAnalyticCertificate where
  dnaBinding : Prop
  catalyticSite : Prop
  metalCoordination : Prop
  cleavage : Prop
  dnaBindingClosed : dnaBinding
  catalyticSiteClosed : catalyticSite
  metalCoordinationClosed : metalCoordination
  cleavageClosed : cleavage

def NucleaseDomainAnalyticCertificateClosed (C : NucleaseDomainAnalyticCertificate) : Prop :=
  C.dnaBinding ∧ C.catalyticSite ∧ C.metalCoordination ∧ C.cleavage

theorem nuclease_domain_analytic_certificate_closed (C : NucleaseDomainAnalyticCertificate) :
    NucleaseDomainAnalyticCertificateClosed C := by
  exact And.intro C.dnaBindingClosed (And.intro C.catalyticSiteClosed (And.intro C.metalCoordinationClosed C.cleavageClosed))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse