import LinearElasticityInitialStressesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

def ConstrainedInitialStressClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_initial_stress_endgame (A : AdmissibleClass) :
    ConstrainedInitialStressClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse