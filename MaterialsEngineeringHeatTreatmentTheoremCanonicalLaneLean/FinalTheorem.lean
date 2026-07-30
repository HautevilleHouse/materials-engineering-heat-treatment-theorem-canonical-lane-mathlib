import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

def ConstrainedHeatTreatmentClosure (A : HeatTreatmentAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_heat_treatment_endgame (A : HeatTreatmentAdmissibleClass) :
    ConstrainedHeatTreatmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse