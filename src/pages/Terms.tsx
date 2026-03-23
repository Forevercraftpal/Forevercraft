import PageHero from '../components/layout/PageHero'

export default function Terms() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="TERMS OF SERVICE"
        badge="LEGAL"
        subtitle="The rules of engagement."
        particleColor="rgba(150, 150, 150, 0.2)"
      />

      <div className="max-w-[900px] mx-auto px-8 py-16">
        <div className="font-['Crimson_Pro'] text-lg text-stone-300 leading-relaxed space-y-6">
          <p className="text-stone-500 text-base">Last updated: March 22, 2026</p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">THE DATAPACK</h2>
          <p>
            Forevercraft is a free, community-made Minecraft datapack. It is provided as-is, without
            warranty of any kind. You are free to download, use, and enjoy Forevercraft in your personal
            Minecraft worlds and servers.
          </p>
          <p>
            Forevercraft is not affiliated with or endorsed by Mojang Studios, Microsoft, or Minecraft.
            Minecraft is a trademark of Mojang Studios.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">USAGE RIGHTS</h2>
          <ul className="list-disc list-inside space-y-2 text-stone-400">
            <li>You may use Forevercraft in personal and public Minecraft servers</li>
            <li>You may use the modular download system to create custom combinations</li>
            <li>You may not redistribute the datapack as your own work</li>
            <li>You may not sell access to Forevercraft or any of its individual systems</li>
            <li>You may not claim authorship of any part of the datapack</li>
            <li>You may credit Forevercraft and link to our website when sharing</li>
          </ul>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">DONATIONS & MEMBERSHIPS</h2>
          <p>
            Donations are entirely voluntary and are not required to use Forevercraft. The full datapack
            is and will always remain free. Donations support ongoing development, bug fixes, and updates.
          </p>
          <p>
            Membership tiers may offer additional benefits such as early access to patch notes, feature
            voting, or custom in-game lore contributions. These benefits are provided on a best-effort
            basis and may change over time. Memberships can be cancelled at any time through Buy Me a Coffee.
          </p>
          <p>
            Refund requests for one-time donations should be directed to Buy Me a Coffee support.
            Membership refunds follow Buy Me a Coffee's standard refund policy.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">CUSTOM LORE CONTRIBUTIONS</h2>
          <p>
            Mythical-tier members may submit custom lore pieces to be added to the datapack. All
            submissions are subject to review and may be edited for tone, length, or content to fit
            the Forevercraft world. We reserve the right to decline submissions that contain inappropriate,
            offensive, or copyrighted content. Submitted lore becomes part of the Forevercraft datapack
            and may be experienced by all players.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">THE WEBSITE</h2>
          <p>
            The Forevercraft website (forevercraft.co) is provided for informational purposes
            and as a download hub for the datapack. We strive to keep information accurate but make no
            guarantees that all stats, numbers, or descriptions are current at all times.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">LIMITATION OF LIABILITY</h2>
          <p>
            Forevercraft is provided as-is. We are not responsible for any issues arising from the use
            of the datapack, including but not limited to: world corruption, incompatibility with other
            mods or datapacks, or performance issues. Always back up your Minecraft worlds before
            installing any datapack.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">CONTACT</h2>
          <p>
            For questions about these terms, reach out through our
            {' '}<a href="https://buymeacoffee.com/forevercraft" target="_blank" rel="noopener noreferrer" className="text-yellow-500 underline">Buy Me a Coffee page</a> or
            {' '}<a href="https://github.com/Deiontre10/forevercraft" target="_blank" rel="noopener noreferrer" className="text-yellow-500 underline">GitHub repository</a>.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">CHANGES</h2>
          <p>
            We may update these terms from time to time. Changes will be posted on this page with an
            updated date. Continued use of the datapack or website after changes constitutes acceptance
            of the updated terms.
          </p>
        </div>
      </div>
    </div>
  )
}
