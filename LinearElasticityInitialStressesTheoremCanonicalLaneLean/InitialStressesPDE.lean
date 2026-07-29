import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure InitialStressesPDEPackage where
  timeParameter : Type u
  stressField : timeParameter → Type v
  initialStressMatches : Prop
  pdeEvolution : Prop
  ellipticity : Prop

structure InitialStressesPDEEvidence (F : InitialStressesPDEPackage) where
  initialStressMatchesClosed : F.initialStressMatches
  pdeEvolutionClosed : F.pdeEvolution
  ellipticityClosed : F.ellipticity

def InitialStressesPDEClosed (F : InitialStressesPDEPackage) : Prop :=
  F.initialStressMatches ∧ F.pdeEvolution ∧ F.ellipticity

theorem initial_stresses_pde_closed_from_evidence
    (F : InitialStressesPDEPackage) (E : InitialStressesPDEEvidence F) :
    InitialStressesPDEClosed F := by
  exact And.intro E.initialStressMatchesClosed
    (And.intro E.pdeEvolutionClosed E.ellipticityClosed)

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse