import PageHero from '../components/layout/PageHero'

export default function Privacy() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="PRIVACY POLICY"
        badge="LEGAL"
        subtitle="How we handle your information."
        particleColor="rgba(150, 150, 150, 0.2)"
      />

      <div className="max-w-[900px] mx-auto px-8 py-16">
        <div className="font-['Crimson_Pro'] text-lg text-stone-300 leading-relaxed space-y-6">
          <p className="text-stone-500 text-base">Last updated: March 22, 2026</p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">WHAT WE COLLECT</h2>
          <p>
            Forevercraft is a free Minecraft datapack. The datapack itself collects no personal data whatsoever.
            It runs entirely within your Minecraft world on your own computer or server.
          </p>
          <p>
            Our website (forevercraft.pages.dev) may collect basic, anonymous usage analytics through
            Cloudflare's built-in analytics to help us understand how visitors use the site. This includes
            page views, country of origin, and browser type. No cookies are used for tracking, and no
            personally identifiable information is collected through the website.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">DONATIONS</h2>
          <p>
            Donations are processed through Buy Me a Coffee and Stripe. When you make a donation, your
            payment information is handled entirely by these third-party services. We never see, store,
            or have access to your credit card numbers or banking details. Please refer to
            {' '}<a href="https://www.buymeacoffee.com/privacy" target="_blank" rel="noopener noreferrer" className="text-yellow-500 underline">Buy Me a Coffee's Privacy Policy</a> and
            {' '}<a href="https://stripe.com/privacy" target="_blank" rel="noopener noreferrer" className="text-yellow-500 underline">Stripe's Privacy Policy</a> for
            details on how they handle your payment data.
          </p>
          <p>
            If you create a membership, we may receive your name or username and email address through
            Buy Me a Coffee to fulfill membership benefits (such as adding a custom lore piece to the
            datapack). We will never sell, share, or use this information for anything other than
            delivering the membership benefits you signed up for.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">CHILDREN'S PRIVACY</h2>
          <p>
            Forevercraft is a Minecraft modification suitable for all ages. We do not knowingly collect
            personal information from children under 13. Donations require a payment method, which
            inherently requires the user to be of legal age or have parental consent.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">DATA WE DON'T COLLECT</h2>
          <ul className="list-disc list-inside space-y-2 text-stone-400">
            <li>We do not collect in-game data from the datapack</li>
            <li>We do not use tracking cookies on our website</li>
            <li>We do not sell any personal information</li>
            <li>We do not run advertisements</li>
            <li>We do not share data with third parties beyond payment processing</li>
          </ul>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">CONTACT</h2>
          <p>
            If you have questions about this privacy policy, you can reach us through our
            {' '}<a href="https://buymeacoffee.com/forevercraft" target="_blank" rel="noopener noreferrer" className="text-yellow-500 underline">Buy Me a Coffee page</a> or
            {' '}<a href="https://github.com/Deiontre10/forevercraft" target="_blank" rel="noopener noreferrer" className="text-yellow-500 underline">GitHub repository</a>.
          </p>

          <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-400 tracking-widest mt-10 mb-3">CHANGES</h2>
          <p>
            We may update this policy from time to time. Changes will be posted on this page with an
            updated date. Continued use of the website or datapack after changes constitutes acceptance
            of the updated policy.
          </p>
        </div>
      </div>
    </div>
  )
}
