import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

def gateClosed (A : HeatTreatmentAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : HeatTreatmentAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse